
let rec wind_chill (v : int) (t : int) : int =
    if t <= 5 then 0
    else if t >= 20 then t
    else
        let kmh_to_ms = 10
        in
        let wind_chill_factor = 33
        in
        let v_ms = v / kmh_to_ms
        in
        let v_sqr = v_ms * v_ms
        in
        let t_sqr = t * t
        in
        let wci = wind_chill_factor /  (10 + (1.5 * v_sqr / t_sqr))
        in
        let wci_rounded = wci * 10.0 |> ceil |> int_of_float
        in
        wci_rounded

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
