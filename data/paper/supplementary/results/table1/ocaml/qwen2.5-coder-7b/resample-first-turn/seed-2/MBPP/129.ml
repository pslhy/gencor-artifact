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

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
