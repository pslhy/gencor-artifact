let rec next_Perfect_Square (n : int) : int = 
  let rec is_Square (y : int) : bool = 
    let m = int_sqrt y in m * m = y in
  let rec search (x : int) : int = 
    if is_Square x then x else search (x + 1) in
  search (n + 1)

let () =
  let n = 10 in
  let result = next_Perfect_Square n in
  Printf.printf "The next perfect square greater than %d is %d\n" n result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
