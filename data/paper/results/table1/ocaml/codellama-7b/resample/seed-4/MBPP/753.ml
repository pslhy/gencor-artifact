(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    (* base case: if k is 0 or list is empty return empty list *)
    if k = 0 || List.length test_list = 0 then 
        [] 
    else 
        let (head : string * int) = List.hd test_list 
        (* recursion step: find minimum k elements from tail of list*)
        let tail : (string * int) list = min_k (List.tl test_list) (k - 1) 
        (* if head is in tail, return tail otherwise head::tail *)
        if List.mem head tail then 
            tail 
        else 
            head :: tail

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    if k = 0 || List.length test_list = 0 then begin
        []
    end else begin
        let head = List.hd test_list in
        let tail = min_k (List.tl test_list) (k - 1) in
        if List.mem head tail then begin
            tail
        end else begin
            head :: tail
        end
    end

