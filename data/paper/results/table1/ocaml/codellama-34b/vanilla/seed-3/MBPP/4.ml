let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n = 0 then
    []
  else
    let largest, heap = heap_queue_largest nums (n - 1) in
    let heap = ref heap in
    match nums with
    | [] ->
        largest :: heap
    | head :: tail ->
        if head >= largest then
          heap := head :: !heap
        else
          heap := heap :: !heap;
        heap_queue_largest tail (n - 1)

let n_largest (nums : int list) (n : int) : int list =
  heap_queue_largest nums n |> List.sort compare


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
