package com.citrix.apac.recruiting.helper;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.module.SimpleModule;

public class XssSanitizeObjectMapper extends ObjectMapper {
	
    private static final long serialVersionUID = -3448961813323784217L;

    public XssSanitizeObjectMapper() {
        SimpleModule module = new SimpleModule("HTML XSS Serializer",new Version(1, 0, 0, "FINAL","com.citrix.apac","json-xss-module"));
        module.addSerializer(new JsonHtmlXssSerializer(String.class));
        registerModule(module);
    }
    
    class JsonHtmlXssSerializer extends JsonSerializer<String> {

        public JsonHtmlXssSerializer(Class<String> string) {
            super();
        }

        public Class<String> handledType() {
            return String.class;
        }

        public void serialize(String value, JsonGenerator jsonGenerator,
                SerializerProvider serializerProvider) throws IOException,
                JsonProcessingException {
            if (value != null) {
                String encodedValue = Jsoup.clean(value.toString(), Whitelist.simpleText());
                jsonGenerator.writeString(encodedValue);
            }
        }
    }
}
