let rec loss_amount (actual_cost : int) (sale_amount : int) : int = 
    if sale_amount < actual_cost then 
       (actual_cost - sale_amount) 
    else 
       0 
        
        
(* Tests *) 
 let test_case1 = (1000,900,100); 
 let test_case2 = (800,700,50); 
 let test_case3 = (1000,500,500); 
 assert(loss_amount test_case1 = 100); 
 assert(loss_amount test_case2 = 50); 
 assert(loss_amount test_case3 = 500);


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that gives loss amount on a sale if the given amount has loss else return 0. *)
