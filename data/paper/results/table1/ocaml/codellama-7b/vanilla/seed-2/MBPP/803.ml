let rec is_perfect_square (n : int) : bool =
  match n with
  | 0 | 1 -> true
  | _ ->
      let root = int_of_float (sqrt (float_of_int n)) in
      root * root = n

let main () =
  let result = is_perfect_square 16 in
  print_endline (string_of_bool result)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
