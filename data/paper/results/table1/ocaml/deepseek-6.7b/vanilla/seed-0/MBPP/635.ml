let rec heap_sort (iterable : int list) : int list =
    let rec build_heap = function
      | [] -> []
      | [x] -> [x]
      | xs -> let h = build_heap (List.tl xs) in
              (if xs |> List.hd |> (<=) (List.hd h) then [List.hd xs] else [List.hd h]) @ h
    in
    let rec heap_sort_helper = function
      | [] -> []
      | xs -> let h = build_heap xs in
              List.hd h :: heap_sort_helper (List.tl xs)
    in
    heap_sort_helper iterable |> List.rev


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
