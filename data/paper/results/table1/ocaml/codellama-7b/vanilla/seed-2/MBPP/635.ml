let rec heap_sort (iterable : int list) : int list =
  match iterable with
  | [] -> []
  | [_] -> iterable
  | _ ->
    let rec heapify (start : int) (end_ : int) =
      let largest =
        if start < end_ then
          if List.nth iterable start > List.nth iterable (start + 1) then
            start
          else
            (start + 1)
        else
          start
      in
      let new_end = if largest = end_ then end_ else heapify largest (end_ - 1) in
      List.nth iterable largest :: heapify (new_end + 1) (end_ - 1)
    in
    let rec build_heap (start : int) (end_ : int) =
      match start < end_ with
      | true -> build_heap (start + 1) end_
      | false -> List.rev (heapify start (end_ - 1))
    in
    build_heap 0 (List.length iterable - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
