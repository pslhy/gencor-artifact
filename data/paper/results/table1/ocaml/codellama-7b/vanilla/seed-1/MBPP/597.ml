let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
match (arr1, arr2, k) with
| ([], [], _) -> failwith "Invalid input"
| ([], _, _) -> List.hd arr2
| (_, [], _) -> List.hd arr1
| (a1 :: t1, a2 :: t2, k) ->
    let k1 = k - 1 in
    let k2 = k - 1 - k1 in
    let el1, el2 =
      if k1 >= 0 then (Some a1, None) else (None, Some a2)
    in
    match el1, el2 with
    | Some x, _ -> x
    | _, Some y -> y
    | None, None -> find_kth t1 t2 k2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
