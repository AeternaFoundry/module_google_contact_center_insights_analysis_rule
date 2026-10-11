resource "google_contact_center_insights_analysis_rule" "contact_center_insights_analysis_rules" {
  for_each = var.contact_center_insights_analysis_rules

  location            = each.value.location
  active              = each.value.active
  analysis_percentage = each.value.analysis_percentage
  conversation_filter = each.value.conversation_filter
  deletion_policy     = each.value.deletion_policy
  display_name        = each.value.display_name
  project             = each.value.project

  dynamic "annotator_selector" {
    for_each = each.value.annotator_selector != null ? [each.value.annotator_selector] : []
    content {
      issue_models    = annotator_selector.value.issue_models
      phrase_matchers = annotator_selector.value.phrase_matchers
      dynamic "qa_config" {
        for_each = annotator_selector.value.qa_config != null ? [annotator_selector.value.qa_config] : []
        content {
          dynamic "scorecard_list" {
            for_each = qa_config.value.scorecard_list != null ? [qa_config.value.scorecard_list] : []
            content {
              qa_scorecard_revisions = scorecard_list.value.qa_scorecard_revisions
            }
          }
        }
      }
      run_entity_annotator         = annotator_selector.value.run_entity_annotator
      run_intent_annotator         = annotator_selector.value.run_intent_annotator
      run_interruption_annotator   = annotator_selector.value.run_interruption_annotator
      run_issue_model_annotator    = annotator_selector.value.run_issue_model_annotator
      run_phrase_matcher_annotator = annotator_selector.value.run_phrase_matcher_annotator
      run_qa_annotator             = annotator_selector.value.run_qa_annotator
      run_sentiment_annotator      = annotator_selector.value.run_sentiment_annotator
      run_silence_annotator        = annotator_selector.value.run_silence_annotator
      run_summarization_annotator  = annotator_selector.value.run_summarization_annotator
      dynamic "summarization_config" {
        for_each = annotator_selector.value.summarization_config != null ? [annotator_selector.value.summarization_config] : []
        content {
          conversation_profile = summarization_config.value.conversation_profile
          summarization_model  = summarization_config.value.summarization_model
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

