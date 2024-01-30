package com.gustavonascimento.DsLearn.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;

@OpenAPIDefinition
@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI dsEventPI() {
        return new OpenAPI()
           .info(new Info()
           .title("DSLearn API")
           .description("API criada para estudo sobre princípios de Domínio e ORM, autorizações no Spring")
           .version("v0.0.1")
           .license(new License()
           .name("Apache 2.0")
           .url("https://github.com/Gustavo-Henrique-Lima")));
    }
}