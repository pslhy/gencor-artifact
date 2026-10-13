let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
    match dict1 with 
      head :: tail ->  ( let (k,v) = head in 
      let restv = sort_counter tail in 
      let nrestv = List.map (fun (k',v') -> 
          if k > k' 
          then (k',v') 
          else (k'',v' + 1)) restv 
       [(k,v) :: nrestv ])) 
     [] -> []


let test () = 
    let dict = [("d",2);("b",3);("e",8)] in 
    let result = sort_counter dict in 
    print_string "Result: \n"; 
    print_list result; 
    print_newline ()

let print_list (list: (string * int) list) = 
    List.iter (fun (k, v) -> Printf.printf "%s %d\n" k v) list     


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
