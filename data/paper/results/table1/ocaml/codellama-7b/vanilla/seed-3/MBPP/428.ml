let rec shell_sort (my_list : int list) : int list =
  if my_list = [] then []
  else
    let rec gaps () =
      let n = List.length my_list in
      if n >= 1 then
        if n = 1 then [0]
        else
          let k = truncate (sqrt (float_of_int n)) in
          if k * k = n then [k]
          else k :: gaps ()
      else []
    in
    let rec insert_sorted (temp : int list) (gap : int) (sorted : int list) : int list =
      match temp with
      | [] -> sorted
      | x :: xs ->
        if x <= List.nth sorted (gap - 1) then x :: insert_sorted xs gap sorted
        else List.nth sorted (gap - 1) :: insert_sorted temp gap (sorted @ [x])
    in
    List.flatten (List.mapi (fun i x -> insert_sorted (List.drop i my_list) (List.nth gaps i)) my_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
