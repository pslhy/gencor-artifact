let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  let rec aux (l1 : int list) (l2 : int list) : (int * (int list)) =
    match l1 with
      [] -> (match l2 with [] -> (List.hd l3, List.tl l3) | _ -> (List.hd l2, List.tl l2))
    | hd1 :: tl1 ->
        match l2 with
          [] -> (match l3 with [] -> (List.hd l3, List.tl l3) | _ -> (List.hd l1, List.tl l1))
        | hd2 :: tl2 ->
          if hd1 <= hd2 then (hd1, List.cons hd1 (aux tl1 l2)) else (hd2, List.cons hd2 (aux l1 tl2))
  in
  let (hd1, tl1) = aux num1 num2 in
  List.cons hd1 (merge_sorted_list tl1 num2 num3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
