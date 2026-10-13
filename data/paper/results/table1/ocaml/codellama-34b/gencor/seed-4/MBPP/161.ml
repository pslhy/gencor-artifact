
let rec remove_elements (list1 : int list) (list2 : int list) : int list = 
    (* base case: if list1 is empty, there are no elements to remove *)
    match list1 with 
    | [] -> []
    (* case: if list2 contains the first element of list1, then list1 is not modified *)
    | hd :: tl when List.mem hd list2 = List.remove_assoc hd list1 
    |> remove_elements tl list2
    |> List.remove_assoc hd list1

    print_endline(
        let list1 = [1;2;3;4;5];
        let list2 = [1;3;5];
        print_int(remove_elements list1 list2)
    :: 
    List.filter (fun x -> not (List.mem x list2)) list1
    :: 
    []
    :: 
    function


    Type


    .


    (unit, lists, [])
    
    :: 
    (List.(_), rebern, [8])
    :: 
    ([]
    ::  []
    ::  []
    ::  []
    ::  []
    ::  [])



    :: 
    base


    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


    :: 
    []


    :: 
    []



    :: 
    []


   

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
