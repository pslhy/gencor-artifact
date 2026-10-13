let rec text_match_three (text : string) : bool = 
    (*
     * This function takes a string as input 
     * and returns true or false 
     * Use this as a template:
        
         let rec hasThreeB str offset = 
         match str.[offset] with
         | 'a' -> hasTwoB 
         | _ -> false
         in hasThreeB text 0
     *    
     * This function takes a string and an index offset
     * as input, and returns true or false
     * Use this as a template:
        
         let rec hasTwoB str offset = 
         match str.[offset] with
         | 'b' -> hasOneB 
         | _ -> false
         in hasTwoB text 0
     *   
     * This function takes a string and an index
     * offset as input, and returns true or false
     * Use this as a template:
        
         let rec hasOneB str offset = 
         match str.[offset] with
         | 'b' -> true
         | _ -> false
         in hasOneB
     * Use this as a template:
        
         let rec text_match_three str = 
         match str with
         | "a" -> true (* case 1 *)
         | "ab" -> true (* case 2 *)
         | "abc" -> true (* case 3 *)
         | "abcd" -> true (* case 4 *)
         | _ -> text_match_three str
         in text_match_three
     * Use this as a template:
        
         let rec text_match_three str = 
         match str with
         | "" -> false
         | "a" -> true
         | "ab" -> true
         | "abc" -> true
         | "abcd" -> true
         | _ -> text_match_three str
         in text_match_three
     * This function takes a string as input and returns true or false.
     * It uses a case statement to check four different cases, and in each case,
     * it checks if the string is one or more 'b' following an 'a'.
     *)
     
   

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
