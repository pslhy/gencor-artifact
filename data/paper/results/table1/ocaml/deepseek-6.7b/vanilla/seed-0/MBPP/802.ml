let rec count_rotation (arr : int list) : int =
    let rec find_rotation (arr : int list) (low : int) (high : int) : int =
        if high < low then
            0
        else
            let mid = low + (high - low) / 2 in
            let next = (mid + 1) mod List.length arr in
            let prev = (mid + List.length arr - 1) mod List.length arr in
            if arr.[prev] > arr.[mid] && arr.[next] > arr.[mid] then
                mid + 1
            else if arr.[mid] < arr.[(mid - 1 + List.length arr) mod List.length arr] then
                find_rotation arr low (mid - 1)
            else
                find_rotation arr (mid + 1) high
    in
    let n = List.length arr in
    if List.length arr = 1 || arr.[n - 1] > arr.[0] then
        0
    else
        find_rotation arr 0 (n - 1)

(* Testing the function *)
let lst1 = [15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14]
let lst2 = [40, 50, 60, 10, 20, 30, 40]

let () = print_endline (string_of_int (count_rotation lst1))
let () = print_endline (string_of_int (count_rotation lst2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
