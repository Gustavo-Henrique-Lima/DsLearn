package com.gustavonascimento.DsLearn.entities.enums;

public enum DeliverStatus {

	LESSON_ONLY(1), LESSON_TASK(2), FORUM(3), EXTERNAL_LINK(4);

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