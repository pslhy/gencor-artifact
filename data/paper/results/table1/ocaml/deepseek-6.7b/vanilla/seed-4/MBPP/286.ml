let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let rec find_wraparound (a : int list) =
    let add_arrays l1 l2 =
      (List.length l1) :: (List.rev (List.tl (List.rev l1 @ l2))) in
    match a with
    | [] -> []
    | h::t -> add_arrays (h::t) (h::t) @ find_wraparound t
  in
  let wraparound_list = List.flatten (List.init k (fun _ -> find_wraparound a)) in
  let wraparound_sums = List.map (fun n -> max_sub_array_sum wraparound_list n) [n] in
  List.fold_left max (List.hd wraparound_sums) (List.tl wraparound_sums)

and max_sub_array_sum (a : int list) (n : int) : int =
  let rec helper (a : int list) (n : int) (cur : int) (global : int) : int =
    match a with
    | [] -> global
    | a::t when n > 0 -> helper t (n-1) (cur + a) (max global (cur + a))
    | a::t -> helper t n (a) (max global a) in
  helper a n 0 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
