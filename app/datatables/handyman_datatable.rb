class HandymanDatatable < ApplicationDatatable
  def initialize(params, opts = {})
      @view = opts[:view_context]
      super
    end
  def view_columns
    #  list of the model(s) columns mapped to the data we need to present
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format

    @view_columns ||= {
       id: { source: "Handyman.id", cond: :like, searchable: true, orderable: true},
       profession: { source: "Handyman.profession"},
    }



  end

  def data 
byebug
    Rails.logger.debug("data secand method")
    records.map do |record|
      {
        id: record.id,
        profession: record.profession,
        DT_RowId:   record.id,
      }
    end
  end


  def get_raw_records
    byebug
        Handyman.all

  end

end
