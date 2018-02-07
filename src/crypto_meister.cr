require "./crypto_meister/*"

module CryptoMeister
  #TODO add more encryption agents
  AGENT_TYPES = {xor: XorEncryption}
  def self.new_agent(password : String, agent_type = :xor)
    AGENT_TYPES[agent_type].new(password)
  end

  def self.process_text(text : String, encryption_agent = nil)
    raise "EncryptionAgentMissing" unless encryption_agent
    encryption_agent.process(text)
  end

end
