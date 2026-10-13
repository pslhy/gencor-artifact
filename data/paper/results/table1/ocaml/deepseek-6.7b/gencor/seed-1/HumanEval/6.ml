
let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | _  -> let (group, rest) = parse_nested_parens. 
    
  (match paren_string with 
  | "" -> (0, "") 
  | _  -> let (start, rest) = parse_nested_parens (String.sub paren_string 1 (String.length paren_string - 1)) in 
          (start + 1, rest)) in 
    
  let (start, new_str) = parse_nested_parens string_of_format.
 


(succ("
  

 
 


 


 


 

 

    },
 

 
  


 
 

 



  


 


 

 

 




  



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input to this function is a string represented multiple groups for nested parentheses separated by spaces. *)
(*     For each of the group, output the deepest level of nesting of parentheses. *)
(*     E.g. (()()) has maximum two levels of nesting while ((())) has three. *)
(*     >>> parse_nested_parens "(()()) ((())) () ((())()())" *)
(*     [2; 3; 1; 3] *)
