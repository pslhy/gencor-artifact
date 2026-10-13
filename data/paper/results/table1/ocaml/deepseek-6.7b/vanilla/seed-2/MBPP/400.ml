let rec extract_freq (test_list :  (int * int) list) : int =
  let rec freq (element, tuple_list, count) = 
    match tuple_list with
    | [] -> count
    | h::t -> if h = element then freq(element, t, count+1) else freq(element, t, count)
  in
  match test_list with
  | [] -> 0
  | h::t -> let tail_unique = List.filter (fun x -> x <> h) t in
    freq(h, test_list, 0) + extract_freq(tail_unique)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
