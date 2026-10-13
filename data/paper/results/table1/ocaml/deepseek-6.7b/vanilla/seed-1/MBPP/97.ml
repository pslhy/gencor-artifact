let rec frequency_lists (list1 : int list list) : (int * int) list =
  match list1 with
  | [] -> []
  | h::t -> let tail_freq = frequency_lists t in
    List.fold_left (fun (assoc : (int * int) list) (i : int) ->
      let (_, count) = try List.find (fun (x, _) -> x = i) assoc
      with Not_found -> (i, 0) in (i, count + 1)) tail_freq h
(* Testing
# frequency_lists [[1; 2; 3]; [1; 2; 1]; [2; 2; 1]];;
- : (int * int) list = [(1, 4); (2, 5); (3, 1)]
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
