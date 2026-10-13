(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
    let n = List.length my_matrix in
    let sum = List.sum my_matrix.[0] in
    let sum_list = List.map2 (fun x y -> x + y) my_matrix.(0) my_matrix.(1) in
    let sum2 = List.sum sum_list in
    let sum_rows () = 
        List.map List.sum my_matrix in
    let sum_columns () = 
        let rec loop acc i = 
            if i = n then acc
            else loop (acc @ [List.map (fun row -> row.[i]) my_matrix |> List.sum]) (i + 1)
        in loop [] 0 in
    let sum_diagonals () =
        let rec loop acc i j =
            if i = n then acc
            else loop (acc @ [List.nth (List.nth my_matrix i) j]) (i + 1) (j + 1)
        in loop [] 0 0 in
    sum = sum2 && sum = (sum_rows ()) && sum = (sum_columns ()) && sum = (sum_diagonals ())
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
    let n = List.length my_matrix in
    let sum = List.sum my_matrix.(0) in
    let sum_list = List.map2 (fun x y -> x + y) my_matrix.(0) my_matrix.(1) in
    let sum2 = List.sum sum_list in
    let sum_rows () = 
        List.map List.sum my_matrix in
    let sum_columns () = 
        let rec loop acc i = 
            if i = n then acc
            else loop (acc @ [List.map (fun row -> row.[i]) my_matrix |> List.sum]) (i + 1)
        in loop [] 0 in
    let sum_diagonals () =
        let rec loop acc i j =
            if i = n then acc
            else loop (acc @ [List.nth (List.nth my_matrix i) j]) (i + 1) (j + 1)
        in loop [] 0 0 in
    sum = sum2 && sum = (sum_rows ()) && sum = (sum_columns ()) && sum = (sum_diagonals ())

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:15: Unbound value "List.sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
    let n = List.length my_matrix in
    let rec sum_list lst = 
        match lst with
        | [] -> 0
        | x::xs -> x + sum_list xs in
    let sum = sum_list my_matrix.(0) in
    let sum_list2 = List.map2 (fun x y -> x + y) my_matrix.(0) my_matrix.(1) in
    let sum2 = sum_list sum_list2 in
    let sum_rows () = 
        List.map sum_list my_matrix in
    let sum_columns () = 
        let rec loop acc i = 
            if i = n then acc
            else loop (acc @ [List.map (fun row -> row.[i]) my_matrix |> sum_list]) (i + 1)
        in loop [] 0 in
    let sum_diagonals () =
        let rec loop acc i j =
            if i = n then acc
            else loop (acc @ [List.nth (List.nth my_matrix i) j]) (i + 1) (j + 1)
        in loop [] 0 0 in
    sum = sum2 && sum = (sum_rows ()) && sum = (sum_columns ()) && sum = (sum_diagonals ())

