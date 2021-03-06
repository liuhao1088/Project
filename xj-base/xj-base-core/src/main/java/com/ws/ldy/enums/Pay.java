package com.ws.ldy.enums;

import com.baomidou.mybatisplus.core.enums.IEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;

@SuppressWarnings("all")
public interface Pay{

    // -
    @Getter
    @AllArgsConstructor
    enum PayBusiness implements IEnum<Integer> {
        V1(1, "用户下单"),    // -
        V2(2, "vip充值/续费"),    // -
        ;
        private Integer value;
        private String desc;
    }

    // -
    @Getter
    @AllArgsConstructor
    enum PayChannel implements IEnum<Integer> {
        V1(1, "支付宝"),    // -
        V2(2, "微信"),    // -
        V3(3, "银联"),    // -
        ;
        private Integer value;
        private String desc;
    }

    // -
    @Getter
    @AllArgsConstructor
    enum PayState implements IEnum<Integer> {
        V0(0, "已发起"),    // -
        V1(1, "回调成功"),    // -
        V2(2, "交易失败"),    // -
        V3(3, "交易成功"),    // -
        V4(4, "订单异常"),    // -
        ;
        private Integer value;
        private String desc;
    }

    // -
    @Getter
    @AllArgsConstructor
    enum PayType implements IEnum<Integer> {
        V1(1, "支付"),    // -
        V2(2, "充值"),    // -
        V3(3, "退款"),    // -
        V4(4, "商家打款"),    // -
        ;
        private Integer value;
        private String desc;
    }

    // -
    @Getter
    @AllArgsConstructor
    enum WalletType implements IEnum<Integer> {
        V1(1, "收入"),    // -
        V2(2, "支出"),    // -
        ;
        private Integer value;
        private String desc;
    }
}