using Genie.Router
using Mimi
using MimiFUND
using Dates

route("/") do
    # Get the Social Cost of CO2 in year 2020 from the default MimiFUND model:
    m = MimiFUND.get_model()

    #Input Year
    current_year = string(Dates.year(today()))
    input_year = parse(Int64, params(:year, current_year))

    #input eta
    input_eta = parse(Float64, params(:eta, "0"))

    #input prtp
    input_prtp = parse(Float64, params(:prtp, "0.015"))

    #input last_year
    input_last_year = parse(Int64, params(:last_year, "3000"))

    #input pulse_size
    pulse_size = parse(Float64, params(:pulse_size, "10000000"))

    scc = MimiFUND.compute_scco2(m, year = input_year, eta = input_eta, prtp = input_prtp, last_year = input_last_year, pulse_size = pulse_size)
  end

  route("/co2") do
    # Get the Social Cost of CO2 in year 2020 from the default MimiFUND model:
    m = MimiFUND.get_model()

    #Input Year
    current_year = string(Dates.year(today()))
    input_year = parse(Int64, params(:year, current_year))

    #input eta
    input_eta = parse(Float64, params(:eta, "0"))

    #input prtp
    input_prtp = parse(Float64, params(:prtp, "0.015"))

    #input last_year
    input_last_year = parse(Int64, params(:last_year, "3000"))

    #input pulse_size
    pulse_size = parse(Float64, params(:pulse_size, "10000000"))

    scc = MimiFUND.compute_scco2(m, year = input_year, eta = input_eta, prtp = input_prtp, last_year = input_last_year, pulse_size = pulse_size)
  end

  route("/n2o") do
    # Get the Social Cost of N2O in year 2020 from the default MimiFUND model:
    m = MimiFUND.get_model()

    #Input Year
    current_year = string(Dates.year(today()))
    input_year = parse(Int64, params(:year, current_year))

    #input eta
    input_eta = parse(Float64, params(:eta, "0"))

    #input prtp
    input_prtp = parse(Float64, params(:prtp, "0.015"))

    #input last_year
    input_last_year = parse(Int64, params(:last_year, "3000"))

    #input pulse_size
    pulse_size = parse(Float64, params(:pulse_size, "10000000"))

    scc = MimiFUND.compute_scn2o(m, year = input_year, eta = input_eta, prtp = input_prtp, last_year = input_last_year, pulse_size = pulse_size)
  end

  route("/ch4") do
    # Get the Social Cost of CH4 in year 2020 from the default MimiFUND model:
    m = MimiFUND.get_model()

    #Input Year
    current_year = string(Dates.year(today()))
    input_year = parse(Int64, params(:year, current_year))

    #input eta
    input_eta = parse(Float64, params(:eta, "0"))

    #input prtp
    input_prtp = parse(Float64, params(:prtp, "0.015"))

    #input last_year
    input_last_year = parse(Int64, params(:last_year, "3000"))

    #input pulse_size
    pulse_size = parse(Float64, params(:pulse_size, "10000000"))

    scc = MimiFUND.compute_scch4(m, year = input_year, eta = input_eta, prtp = input_prtp, last_year = input_last_year, pulse_size = pulse_size)
  end

  route("/sf6") do
    # Get the Social Cost of SF6 in year 2020 from the default MimiFUND model:
    m = MimiFUND.get_model()

    #Input Year
    current_year = string(Dates.year(today()))
    input_year = parse(Int64, params(:year, current_year))

    #input eta
    input_eta = parse(Float64, params(:eta, "0"))

    #input prtp
    input_prtp = parse(Float64, params(:prtp, "0.015"))

    #input last_year
    input_last_year = parse(Int64, params(:last_year, "3000"))

    #input pulse_size
    pulse_size = parse(Float64, params(:pulse_size, "10000000"))

    scc = MimiFUND.compute_scsf6(m, year = input_year, eta = input_eta, prtp = input_prtp, last_year = input_last_year, pulse_size = pulse_size)
  end
