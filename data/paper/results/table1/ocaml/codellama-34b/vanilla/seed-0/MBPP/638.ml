let rec wind_chill (v : int) (t : int) : int =
    if t <= 5 then 0
    else if t >= 20 then t
    else
        let kmh_to_ms = 10
        let c_to_k = 273
        let v10 = (v / kmh_to_ms) ** 0.16
        let t0 = (t + c_to_k) ** 0.16
        let t1 = t0 - v10
        let wc = (t1 ** 0.87) - (10 ** 0.33)
        round (wc + c_to_k)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
