let rec heap_queue_largest (nums : int list) (n : int) : int list =
  let rec insert x = function
    | [] -> [x]
    | (y :: ys) as l -> if x > y then x :: l else y :: insert x ys
  and delete_max = function
    | [] -> []
    | [x] -> []
    | (x :: x' :: xs) ->
        if x > x' then x' :: delete_max (x :: xs)
        else x :: delete_max (x' :: xs)
  and nlargest_heap q rest k =
    match rest, k with
    | [], _ -> q
    | _ , 1 -> nlargest_heap (insert (List.hd rest) q) (List.tl rest) (n - 1)
    | _ , _ -> nlargest_heap (delete_max q) rest (n - 1)
  in
  let max = List.hd nums in
  List.rev (nlargest_heap [] (insert max (List.tl nums)) n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
