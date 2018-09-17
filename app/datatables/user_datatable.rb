class UserDatatable < ApplicationDatatable

  def view_columns
    @view_columns ||= {
      id:         { source: "User.id" },
      first_name: { source: "User.first_name", cond: :like, searchable: true, orderable: true },
      last_name:  { source: "User.last_name",  cond: :like },
      email:      { source: "User.email" },
    }
  end

  def data
    records.map do |record|
      {
    id:         record.id,
    first_name: record.first_name,
    last_name:  record.last_name,
    email:      record.email,
    DT_RowId:   record.id, # This will automagically set the id attribute on the corresponding <tr> in the datatable
  }
    end
  end

  def get_raw_records
    # insert query here
     User.all
  end

end
