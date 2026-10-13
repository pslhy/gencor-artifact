let rec heap_sort (iterable : int list) : int list =
  let heap = Array.of_iterable iterable in
  let len = Iterable.len heap in
  if len <= 1 then heap else
    let max = List.max_by (fun x -> x) heap in
    heap.[len - 1] <- heap.[0];
    heap.[0] <- max;
    heap_sort (List.take heap (len - 1)) @ [max]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
