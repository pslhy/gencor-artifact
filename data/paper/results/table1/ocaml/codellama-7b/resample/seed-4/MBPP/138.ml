(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
  if n <= 0 then
    false
  else if n = 1 then
    true
  else
    let rec check_powers (n : int) : int list =
      match n with
      | 1 -> [1]
      | _ ->
        let (pow2, n') = Int.pow2 n in
        if pow2 = 0 then
          []
        else
          pow2 :: check_powers n'
    in
    match check_powers n with
    | [pow2] -> pow2 = n
    | _ -> false

let _ =
  Printf.printf "Sum of non-zero powers of 2? %b\n" (is_Sum_Of_Powers_Of_Two 6)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:26: Unbound value "Int.pow2" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
  if n <= 0 then
    false
  else if n = 1 then
    true
  else
    let rec check_powers (n : int) : int list =
      match n with
      | 1 -> [1]
      | _ ->
        let (pow2, n') = (float_of_int n) ** (1.0 /. 2.0) in
        if pow2 = 0.0 then
          []
        else
          pow2 :: check_powers n'
    in
    match check_powers n with
    | [pow2] -> pow2 = n
    | _ -> false

let _ =
  Printf.printf "Sum of non-zero powers of 2? %b\n" (is_Sum_Of_Powers_Of_Two 6)

