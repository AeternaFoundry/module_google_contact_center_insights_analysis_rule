variable "contact_center_insights_analysis_rules" {
  description = <<EOT
Map of contact_center_insights_analysis_rules, attributes below
Required:
    - location
Optional:
    - active
    - analysis_percentage
    - conversation_filter
    - deletion_policy
    - display_name
    - project
    - annotator_selector (block):
        - issue_models (optional)
        - phrase_matchers (optional)
        - qa_config (optional, block):
            - scorecard_list (optional, block):
                - qa_scorecard_revisions (optional)
        - run_entity_annotator (optional)
        - run_intent_annotator (optional)
        - run_interruption_annotator (optional)
        - run_issue_model_annotator (optional)
        - run_phrase_matcher_annotator (optional)
        - run_qa_annotator (optional)
        - run_sentiment_annotator (optional)
        - run_silence_annotator (optional)
        - run_summarization_annotator (optional)
        - summarization_config (optional, block):
            - conversation_profile (optional)
            - summarization_model (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location            = string
    active              = optional(bool)
    analysis_percentage = optional(number)
    conversation_filter = optional(string)
    deletion_policy     = optional(string)
    display_name        = optional(string)
    project             = optional(string)
    annotator_selector = optional(object({
      issue_models    = optional(list(string))
      phrase_matchers = optional(list(string))
      qa_config = optional(object({
        scorecard_list = optional(object({
          qa_scorecard_revisions = optional(list(string))
        }))
      }))
      run_entity_annotator         = optional(bool)
      run_intent_annotator         = optional(bool)
      run_interruption_annotator   = optional(bool)
      run_issue_model_annotator    = optional(bool)
      run_phrase_matcher_annotator = optional(bool)
      run_qa_annotator             = optional(bool)
      run_sentiment_annotator      = optional(bool)
      run_silence_annotator        = optional(bool)
      run_summarization_annotator  = optional(bool)
      summarization_config = optional(object({
        conversation_profile = optional(string)
        summarization_model  = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

