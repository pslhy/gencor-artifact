let rec max_sum_list (lists : int list list) : int list =
  let rec sum_list (lst : int list) : int =
    match lst with
    | [] -> 0
    | h :: t -> h + sum_list t
  in
  let rec find_max (lsts : int list list) : (int * int list) =
    match lsts with
    | [] -> (0, [])
    | h :: t ->
        let (max_sum, max_list) = find_max t in
        if sum_list h > max_sum then
          (sum_list h, h)
        else
          (max_sum, max_list)
  in
  snd (find_max lists)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
