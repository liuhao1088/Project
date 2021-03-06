package com.ws.ldy.modules.sys.admin.controller;

import com.ws.ldy.common.result.R;
import com.ws.ldy.constant.BaseConstant;
import com.ws.ldy.modules.sys.admin.model.dto.AdminAuthorityDTO;
import com.ws.ldy.modules.sys.admin.model.entity.AdminAuthority;
import com.ws.ldy.modules.sys.admin.model.vo.AdminAuthorityVO;
import com.ws.ldy.modules.sys.admin.service.AdminAuthorityService;
import com.ws.ldy.modules.sys.base.controller.BaseController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 接口管理
 *
 * @author wangsong
 * @WX-QQ 1720696548
 * @date Mon Nov 25 08:02:49 CST 2019
 */
@RestController
@RequestMapping(BaseConstant.Uri.apiAdmin + "/adminAuthority")
@Api(value = "AdminAuthorityController", tags = "base--URL权限管理")
public class AdminAuthorityController extends BaseController<AdminAuthorityService> {

    @RequestMapping(value = "/findList", method = RequestMethod.GET)
    @ApiOperation(value = "查询所有", notes = "查询所有权限数据，根据不同的端的枚举code 拼接最顶级的目录, 顶级目录ID = -1")
    public R<List<AdminAuthorityVO>> findList() {
        return R.successFind(baseService.findList());
    }


    @RequestMapping(value = "/upd", method = RequestMethod.PUT)
    @ApiOperation(value = "ID编辑", notes = "必须传递ID")
    public R<Boolean> upd(@RequestBody @Validated AdminAuthorityDTO dto) {
        boolean b = baseService.updateById(dto.convert(AdminAuthority.class));
        // 刷新缓存
        baseService.refreshAuthCache();
        return R.successUpdate(b);
    }


    @ApiOperation(value = "查询所有 || 根据角色ID选中", notes = "" +
            "1、没有传递角色Id,查询所有权限数据 isChecked=false \r\n" +
            "2、跟据角色ID查询,角色当前拥有权限：isChecked=true 角色没有权限：isChecked=false \r\n" +
            "3、只查询管理端 \r\n" +
            "4、数据按请求方式排序 "
    )
    @RequestMapping(value = "/findByRoleIdList", method = RequestMethod.GET)
    @ApiImplicitParam(name = "roleId", value = "角色Id", required = false, paramType = "query")
    public R<List<AdminAuthorityVO>> findList(String roleId) {
        List<AdminAuthorityVO> roleAuthorityChecked = baseService.findByRoleIdAuthorityChecked(roleId);
        return R.success(roleAuthorityChecked);
    }


    @RequestMapping(value = "/findByRoleIdAuthorityTreeChecked", method = RequestMethod.GET)
    @ApiOperation(value = "查询所有 || 根据角色ID选中 -> Tree ", notes = "" +
            "1、没有传递角色Id,查询所有权限数据 isChecked=false \r\n" +
            "2、跟据角色ID查询,角色当前拥有权限：isChecked=true 角色没有权限：isChecked=false \r\n" +
            "3、只查询管理端 \r\n" +
            "4、数据按请求方式排序 ")
    @ApiImplicitParam(name = "roleId", value = "角色Id", required = false, paramType = "query")
    public R<List<AdminAuthorityVO>> findByRoleIdAuthorityTreeChecked(String roleId) {
        return R.successFind(baseService.findByRoleIdAuthorityTreeChecked(roleId));
    }


    @ApiOperation(value = "扫描权限", notes = "扫描权限列表数据, 1、存在变更接口描叙, 2、url变动会重新生成权限数据,角色原有的该接口权限会丢失,需重新分配 3、自动删除的多余接口")
    @RequestMapping(value = "/refreshAuthority", method = RequestMethod.PUT)
    @Deprecated
    public R<Boolean> refreshAuthority() {
        return R.success(baseService.refreshAuthDB());
    }
}
