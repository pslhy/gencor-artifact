let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
    let acc = [ test_tup.0 ] in
    let values = [ test_tup.1; test_tup.2; test_tup.3; test_tup.4; test_tup.5 ] in
    let rec helper i =
        if i >= List.length values then
        [] 
        else
    begin
        (acc @ values.(i = acc)@ values.(i + 1)@ values.(i + 2)) ::  helper (i + 1)
    end
    helper 0;;

let () =
    let tup = (10, 20, 30, 40, 50, 60) in
    let dict = tuple_to_dict tup in
    Printf.printf "%d" dict;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
