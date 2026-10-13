let rec shell_sort (my_list : int list) : int list =
  let rec shell_pass n (lst : int list) : int list =
    match lst with
    | [] -> []
    | _ when n <= 0 -> lst 
    | _ ->
        let (fst, snd) = List.partition (fun (_, x) -> x < List.nth lst n)
          (List.combine [0..(List.length lst) - 1] lst) in
        let (_, sorted) = List.split (snd @ (shell_pass (n-1) fst)) in
        sorted 
  in
  shell_pass ((List.length my_list) / 2) my_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
