(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius. *)
let rec wind_chill (v : int) (t : int) : int = 
    (* Calculate the wind chill index for a given wind velocity and temperature *)
    let wind_chill = ((Complex.sqrt 17.2) *. (float v) -. (35.74)) /. (0.6215 + (0.3784 *. (float t)) + (0.12032 *. (float v)) + (0.0134 *. (float v) ** 2)) in
    (* Round to the next integer *)
    round (int_of_float wind_chill) in

let wind_chill_index (v : int) (t : int) : int =
    wind_chill v t in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec wind_chill (v : int) (t : int) : int =
    let c = (Complex.sqrt 17.2) in
    (c *. (float v) -. (35.74)) /. (0.6215 + (0.3784 *. (float t)) + (0.12032 *. (float v)) + (0.0134 *. (float v) ** 2)) |> int_of_float
let wind_chill_index (v : int) (t : int) : int =
    wind_chill v t in

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec wind_chill (v : int) (t : int) : int =
    let c = (Complex.sqrt 17.2) in
    (c * v - 35.74) /. (0.6215 + 0.3784 *. (float t) + 0.12032 *. (float v) + 0.0134 *. (float v) ** 2) |> int_of_float
let wind_chill_index (v: int) (t: int) : int = wind_chill v t

