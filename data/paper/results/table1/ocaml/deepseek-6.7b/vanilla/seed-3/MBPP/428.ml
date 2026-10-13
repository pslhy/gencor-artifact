let rec shell_sort (my_list : int list) : int list =
  let rec gap_sort (my_list : int list) (gap : int) : int list =
    match my_list with
    | [] -> []
    | x :: xs -> 
        let (low, high) = List.partition (fun e -> e < x + gap) xs in
        gap_sort (gap_sort low gap / 3) (gap * 2) @ [x] @ gap_sort high gap * 3
  in gap_sort my_list 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
