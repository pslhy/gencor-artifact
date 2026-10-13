(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:18: Unbound value "unzip_binary" *)
(*     Please regenerate the code, taking these errors into account. *)
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
              |> List.mapi (fun i (a, b) -> (a, b)) (* remove "unzip_binary" *)
              |> List.min
              |> unbox_integer (* remove "unbox_integer" *) (* remove "unbox_integer" *)
            in
            let rest_ of_list2 =
              list2 |> List.splitAt (min_index + 1) (fst list2) (* replace "unbox_integer" with "fst" *)
            in
            loop ((rest_ of_list2) @ tail) (min :: min_index)
    in
    loop test_list []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:18: Unbound value "unbox_integer" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    if k <= 0 then []
    else if k >= (List.length test_list) then test_list
    else
      let rec loop list1 list2 =
        match list1 with
        | [] -> list2
        | head :: tail ->
            let min, min_index =
              List.mapi (fun i (a, b) -> (a, b)) head (* replace "unbox_integer" with "List.mapi" *)
              |> List.min
            in
            let rest_ of_list2 =
              list2 |> List.splitAt (min_index + 1) (fst list2)
            in
            loop ((rest_ of_list2) @ tail) (min :: min_index)
    in
    loop test_list []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:18: Unbound value "List.min" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    if k <= 0 then []
    else if k >= (List.length test_list) then test_list
    else
      let rec loop list1 list2 =
        match list1 with
        | [] -> list2
        | head :: tail ->
            let min = List.fold_left (fun _ -> fun (a, b) -> if a < b then a else b) 0 head in
            let rest_of_list2 =
              list2 |> List.splitAt (List.length head) (fst list2)
            in
            loop ((List.sort rest_of_list2) @ tail) (min :: min_index)
    in
    loop test_list []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:24: Unbound value "List.splitAt" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    if k <= 0 then []
    else if k >= (List.length test_list) then test_list
    else
      let rec loop list1 list2 =
        match list1 with
        | [] -> list2
        | head :: tail ->
            let min = List.fold_left (fun _ -> fun (a, b) -> if a < b then a else b) 0 head in
            let rest_of_list2 =
              list2 |> List.split (List.length head) (fst list2)
            in
            loop ((List.sort rest_of_list2) @ tail) (min :: min_index)
    in
    loop test_list []

