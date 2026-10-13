let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    if k <= 0 then []
    else if k >= (List.length test_list) then test_list
    else
      let rec loop list1 list2 =
        match list1 with
        | [] -> list2
        | head :: tail ->
            let (min, min_index) =
              list2
              |> List.mapi (fun i (a, b) -> (a, math_tuple(a, b)))
              |> List.min
              |> unzip_binary
            |> (fun (a, b) -> (a, b))
            in
            let rest_ of_list2 =
              list2 |> List.splitAt (unbox_integer(min_index) + 1) |> fst
            in
            loop ((rest_ of_list2) @ tail) (min :: min_index)
    in
    loop test_list []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
