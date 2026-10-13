let rec re_arrange_array (arr : int list) (n : int) : int list =
  let rec partition xs acc_neg acc_pos =
    match xs with
    | [] -> List.rev acc_neg, List.rev acc_pos
    | h :: t ->
      if h < 0 then partition t (h :: acc_neg) acc_pos
      else partition t acc_neg (h :: acc_pos)
  in
  let neg, pos = partition arr [] [] in
  List.append (List.take (List.length neg) (List.append (List.rev neg) pos)) (List.drop n pos)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an integer n, and re-arranges the first n elements of the given list so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved. *)
