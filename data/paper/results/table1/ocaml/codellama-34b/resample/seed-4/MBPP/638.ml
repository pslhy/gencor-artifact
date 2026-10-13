(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
let rec wind_chill (v : int) (t : int) : int = 
    (*
     * This function calculates the wind chill index given the wind velocity and a temperature in celsius. The result is rounded to the next integer.
     * Preconditions:
     *   - v and t are integers
     *   - v and t are non-negative
     * Postconditions:
     *   - returns an integer representing the wind chill index
     *)
    let c = 13.12 + 0.6215 * t - 11.37 * v + 0.3965 * t * v in
    (*
     * We use the formula to calculate the wind chill index and then round the result to the nearest integer using the ceil function.
     *)
    ceil(c)

