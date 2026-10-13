(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to create a new tuple from the given string and list. *)
let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string = 
    let (hd, tl) = (match List.hd test_list with 
                    |[] -> ("", tl) 
                    |[hd2] -> hd2, (List.tl test_list)
                    |hd::tl -> hd, (List.tl test_list) 
                    
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string = 
    let (hd, tl) = (match List.hd test_list with 
                    | [] -> ("", tl) 
                    | [hd2] -> hd2, (List.tl test_list)
                    | hd::tl -> hd, (List.tl test_list)
                    ) in
    match List.map ~f:(fun x -> x, 1) test_str with
    | [] -> (hd, "", "")
    | [x, _] -> (hd, x, "")
    | x, y, _ -> (hd, x, y)

