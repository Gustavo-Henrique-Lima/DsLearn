package com.gustavonascimento.DsLearn.entities.enums;

public enum DeliverStatus {

	PENDING(1), ACCEPTED(2), REJECTED(3);

	private int code;

	private DeliverStatus(int code) {
		this.code = code;
	}

	public int getCode() {
		return code;
	}

	public static DeliverStatus pegaValorETransformaEmStatus(int code) {
		for (DeliverStatus valor : DeliverStatus.values()) {
			if (valor.getCode() == code) {
				return valor;
			}
		}
		throw new IllegalArgumentException("Código de status inválido");
	}
}