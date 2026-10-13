let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
  if k = 0 then
    []
  else if List.length test_list = 0 then
    []
  else
    let (curr_record, curr_index) = List.hd test_list in
    let tail_list = List.tl test_list in
    let tail_min = min_k tail_list (k - 1) in
    match tail_min with
    | [] -> [curr_record]
    | _ -> if curr_index <= List.nth tail_min (List.length tail_min - 1) then
               curr_record :: tail_min
           else
               [curr_record] @ tail_min;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
