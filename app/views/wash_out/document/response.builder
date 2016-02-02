xml.instruct!
xml.tag! "soap:Envelope", { "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/',
                            "xmlns:xsd" => 'http://www.w3.org/2001/XMLSchema',
                            "xmlns:bns" => @body_namespace,
                            "xmlns:tns" => @namespace }.compact do
  xml.tag! "soap:Body" do
    xml.tag! "tns:#{@action_spec[:response_tag]}" do
      wsdl_data xml, result
    end
  end
end
