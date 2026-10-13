let rec wind_chill (v : int) (t : int) : int =
    if v < 0 || v > 100 || t < -50 || t > 50 then
        raise (Invalid_argument "inputs out of range")
    else
        let wci = 35.74 + 0.6215 * (float)t - 35.75 *. (float)v ** 0.16 + 0.4275 *. (float)t *. (float)v ** 0.16 in
        int_of_float (ceil wci)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
