class MyRichType < DelegateClass(Date)

  COLUMN_TYPE = :date

  HoboFields.register_type(:my_rich_type, self)

end