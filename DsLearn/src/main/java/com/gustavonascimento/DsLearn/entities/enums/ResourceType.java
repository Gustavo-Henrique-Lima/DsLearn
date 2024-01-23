package com.gustavonascimento.DsLearn.entities.enums;

public enum ResourceType {

	LESSON_ONLY(1), LESSON_TASK(2), FORUM(3), EXTERNAL_LINK(4);

	private int code;

	private ResourceType(int code) {
		this.code = code;
	}

	public int getCode() {
		return code;
	}

	public static ResourceType pegaValorETransformaEmStatus(int code) {
		for (ResourceType valor : ResourceType.values()) {
			if (valor.getCode() == code) {
				return valor;
			}
		}
		throw new IllegalArgumentException("Código de status inválido");
	}
}
