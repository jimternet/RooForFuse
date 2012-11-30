// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package us.hennepin.web;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import us.hennepin.domain.JunkEntity;
import us.hennepin.web.ApplicationConversionServiceFactoryBean;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<JunkEntity, String> ApplicationConversionServiceFactoryBean.getJunkEntityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<us.hennepin.domain.JunkEntity, java.lang.String>() {
            public String convert(JunkEntity junkEntity) {
                return new StringBuilder().append(junkEntity.getName()).append(' ').append(junkEntity.getDateForSomeReason()).toString();
            }
        };
    }
    
    public Converter<Long, JunkEntity> ApplicationConversionServiceFactoryBean.getIdToJunkEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, us.hennepin.domain.JunkEntity>() {
            public us.hennepin.domain.JunkEntity convert(java.lang.Long id) {
                return JunkEntity.findJunkEntity(id);
            }
        };
    }
    
    public Converter<String, JunkEntity> ApplicationConversionServiceFactoryBean.getStringToJunkEntityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, us.hennepin.domain.JunkEntity>() {
            public us.hennepin.domain.JunkEntity convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), JunkEntity.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getJunkEntityToStringConverter());
        registry.addConverter(getIdToJunkEntityConverter());
        registry.addConverter(getStringToJunkEntityConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
