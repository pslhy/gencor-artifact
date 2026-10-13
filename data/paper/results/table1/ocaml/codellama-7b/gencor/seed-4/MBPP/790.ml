
let rec even_position (nums : int list) : bool = 
    match nums with 
      head :: tail -> 
          (match head with 
          | x when x mod 2 = 0 -> true
          | _ -> even_position tail)
      | [] -> true

exception NotFound

let even_position_helper (nums : int list) : int list = 
  let rec loop (nums : int list) result = 
      match nums with 
      head :: tail -> 
          (match head with 
          | x when x mod 2 = 0 -> loop tail (result @ [x])
          | _ -> loop tail result)
      | [] -> result

      loop nums []



||`

The `even_position/3` 																					             		  					                                                                                                                           				                
 																															                                                                                                                                  				                                  		           			                                                                                                                             		 			    			                                                                                                                                         				                                              				                          				                         						                         						                          						                          						                          						   				       		  				    						
  Evenly (nums : int list) :=`      

Here, `nums`                                                                                                                                                                                                                                                                                                                                                                      
 				Is and integer list


Either 									   
 													   
 														                                                                          	                                                                                                                                                                       
 															                                                                                                                                                                     
  															

 	      	                                                                                                                                                                                                                                                                                                                                                                               
 														                                                                                                                                 
 				 										     	                                                                                                 
 					 		 						                                                                                    
 	                                             

                                                                                                                                                    				                                                                                                                                                                                                                                                                                                                                                    					                      

  																													                                                                                                                                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                        
  														                  			                                                                                 
                                                                                                                                                                                                                                                                                                                     

           											     								      										      		
                                                                                                                    

                                          												                                                                                                                                                                                             		
              														     		  						                                                                           		
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                                          						                                                                                                                                                             	    				
 
 															           																																																		
 													           																																																									            
 																																																																					   
 																																																																					                      		
 	                                                                                                                                                                                                                                                                                                                                                                   

 																																		                                                                                                                                                                                                                                                                

 																																                                                                                                                                                                                                                                                                                            


                                                                                                                                                                                                                                                                                                                                                                                                                     		

 																																	                                                                                                                                                                                                                                                                                             		


 																																								                                                                                                                                                                                                                                                                                                  		


  																																																																																																								  		                                                                                                                                                                                                                                                                                                                                                	
 																																																																																																							        	
 																																																																																																					                  		
 				                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     	         			
 																																																																																																																                                                                                                                                                                                                                                                                                                                                                                                                                                   	        
 																																																																																																																			                                                                                                                                                                                                                                                                                                                                                                                          		
 																																																																																																																		                                                                                                                                                                                                                                                                                 
                                                                                               		        	

                                                                   																																																																																																											        						

                                                                                                  																																																																																																									       	 					

                                                                                                                           																																																																																			                              	    					

                                                                                                                                                                                                                                                                                                                                                                                                                                            		

                                                                                                                                     																																																																	 					

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   	    					


       
 																																																																	
 													           																													 



        

 				                                                                                                                                                                                                                                                                                                                         

											                  							                                                                                                                                                                                                                                                                              	         
	




																														                                                                                                                                                                                                                                                                                                                                                 
															                 				                                                                                

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)
