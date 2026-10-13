let rec find_Index (n : int) : int =
    let triangular_number = (n * (n + 1)) / 2 in
    let triangular_digits = string_of_int triangular_number |> String.to_seq |> List.of_seq in
    let rec find_Smallest_Index (index : int) : int option =
        match triangular_digits with
        | [] -> None
        | h :: t ->
            if List.mem h t then
                find_Smallest_Index (index + 1)
            else
                Some (index) in
    find_Smallest_Index 0 ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/ *)
