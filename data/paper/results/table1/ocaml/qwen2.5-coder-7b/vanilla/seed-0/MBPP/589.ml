let rec perfect_squares (a : int) (b : int) : int list = 
  let is_perfect_square n = 
    let root = int_of_float (sqrt (float n)) in
    root * root = n in
  let rec helper n acc =
    if n > b then acc
    else if is_perfect_square n then helper (n + 1) (n :: acc)
    else helper (n + 1) acc
  in
  List.rev (helper a [])

let () =
  let a = 1 in
  let b = 25 in
  print_endline (string_of_int_list (perfect_squares a b))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
