let rec is_octagonal (n : int) : int =
  let d = float_of_int (n - 1) in
  let h = sqrt (1.0 + 4.0 * d) / 2.0 in
  let i = floor (h) in
  let j = i + 1 in
  if abs (h - float_of_int i) < 1E-6 then i else raise (Invalid_argument "not an octagonal number")

let rec octagonal_number (n : int) : int =
  if n = 0 then 1 else (is_octagonal (n + 1) + 1) * n

let _ =
  print_endline (string_of_int (octagonal_number 10))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
