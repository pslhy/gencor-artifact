let rec comb_sort (nums : int list) : int list =
    let swap (x, y) = (y, x) in
    let chunk n =
        let rec loop i acc = function
            | [] -> acc
            | x :: xs when i = n -> loop 1 (x :: acc) xs
            | x :: y :: xs when i = n -> loop 1 (y :: acc) (x :: xs)
            | x :: xs -> loop (i + 1) (x :: acc) xs
        in
        loop 1 []
    in
    let sort = function
        | [] | [_] -> []
        | _ :: _ :: [] -> []
        | xs ->
            let (left, right) = chunk (List.length xs / 2) xs in
            sort left @ sort right
    in
    sort nums

let main () =
    let nums = [3; 2; 1; 4; 6; 5] in
    let result = comb_sort nums in
    print_endline (String.concat ", " (List.map (string_of_int) result))

let () = main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
