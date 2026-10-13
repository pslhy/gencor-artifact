let rec rotate_right (list : int list) (m : int) : int list = 
  let rec split_at n lst = 
    if n = 0 then ([], lst)
    else 
      match lst with
      | [] -> ([], [])
      | x::xs -> let (left, right) = split_at (n-1) xs in (x::left, right)
  in
  let (left, right) = split_at m (List.rev list) in
  List.rev (right @ left)

(* Test cases *)
let () =
  let result1 = rotate_right [1; 2; 3; 4; 5] 2 in
  Printf.printf "Test 1: %s\n" (String.concat ", " (List.map string_of_int result1));
  
  let result2 = rotate_right [10; 20; 30; 40; 50; 60] 3 in
  Printf.printf "Test 2: %s\n" (String.concat ", " (List.map string_of_int result2));
  
  let result3 = rotate_right [7; 8; 9; 10] 1 in
  Printf.printf "Test 3: %s\n" (String.concat ", " (List.map string_of_int result3))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
