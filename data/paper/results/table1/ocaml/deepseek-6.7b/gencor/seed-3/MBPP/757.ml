
let rec count_reverse_pairs (test_list : string list) : int =
  let aux (str_list : string list) (acc : int) : int =
    match str_list with
    | [] -> acc
    | head :: tail -> 
       let temp = List.fold_left (fun acc el -> if String.equal (String.sub el 0 (String.length head)) head then acc + 1 else acc) 0 tail in
       let temp2 = List.fold_left (fun acc el -> if String.equal (String.sub el 0 (String.length head)) (String.sub head 0 (String.length head)) then acc + 1 else acc) 0 tail in
       let rest = List.fold_left (fun acc el -> acc + (if String.equal (String.sub el 0 (String.length head)) (String.sub head 0 (String.length head)) then 1 else 0)) 0 tail in
       let rest2 = List.fold_left (fun acc el -> acc + (if String.equal el head then 1 else 0)) 0 tail in
       temp + temp2 + rest + rest2 + acc
  in
  List.fold_left aux 0 test_list

(* Test cases *)
let test_list = ["abc"; "cba"; "bca"; "bc"; "cb"; "a"]
let test_list2 = ["aa"; "bb"; "ab"; "ba"; "a"; "b"; "aa"; "bb"; "ab"; "ba"]

let res = count_reverse_pairs test_list
let res2 = count_reverse_pairs test_list2

(* If the function is correct, the output should be 2 and 6 respectively *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
