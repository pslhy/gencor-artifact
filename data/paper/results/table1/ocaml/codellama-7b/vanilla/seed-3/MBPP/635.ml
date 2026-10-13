let rec heap_sort (iterable : int list) : int list =
  let n = List.length iterable in
  if n = 1 then
    iterable
  else
    let last = List.nth iterable (n - 1) in
    let rest = List.filter (fun x -> x < last) iterable in
    let sorted = heap_sort rest in
    last :: sorted


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
